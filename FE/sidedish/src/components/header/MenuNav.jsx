import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { MenuNavStyled } from '../../style/header/menuNav'

const MenuNav = () => {
  const [menuList, setMenuList] = useState(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchMenuList = async () => {
      try {
        setMenuList(null);
        setError(null);
        setLoading(true);
        const response = await axios.get('http://localhost:3000/data/mockData.json');
        setMenuList(response.data.menu);
      } catch (e) {
        setError(e);
      }
      setLoading(false);
    }
    fetchMenuList();
  }, []);

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