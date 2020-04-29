import React from 'react';
import { MenuNavStyled } from 'style/header/menuNav'
import menuData from 'assets/menuMockData'

const MenuNav = () => {
  const menuList = menuData.menu
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