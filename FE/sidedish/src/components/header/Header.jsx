import React from 'react';
import LinkNav from './LinkNav'
import LogoNav from './LogoNav'
import MenuNav from './MenuNav'

const Header = () => {
  return (
    <>
      <LinkNav />
      <LogoNav />
      <MenuNav />
    </>
  );
};

export default Header;