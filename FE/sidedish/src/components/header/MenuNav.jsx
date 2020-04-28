import React from 'react';
import axios from 'axios';
import { MenuNavStyled } from 'style/header/menuNav'
import useAsync from 'hooks/useAsync'


const fetchMenuList = async() => {
  const response = await axios.get(process.env.REACT_APP_MOCKDATA_NAV)
  return response.data.menu
}

const MenuNav = () => {
  const state = useAsync(fetchMenuList)
  const {loading, data: menuList, error} = state
  if (loading) return <div>로딩중</div>;
  if (error) return <div>에러</div>;
  if (!menuList) return null;

  return (
    <MenuNavStyled>
      <div className='inner'>
        <ul className="menuNav">
          {menuList.map(menu => (
              <li key={menu.key}>
                <span>{menu.main.name}</span>
                <ul>
                  {menu.sub.map(subMenu => (
                    <li key={subMenu.key}>
                      <span>{subMenu.name}</span>
                    </li>
                  ))}            
                </ul>
              </li>
            ))}
        </ul>
      </div>
    </MenuNavStyled>
  );
};

export default MenuNav;