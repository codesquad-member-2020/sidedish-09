/* eslint-disable */
import React from "react";
import { LogoNavStyled } from 'style/header/logoNav'

const LogoNav = () => {
  return (
    <LogoNavStyled className="inner">
      <div className="header">
        <h1 className="logo">
          <a href="#">
            <img src="https://web.archive.org/web/20190122062652im_/https://cdn.bmf.kr/web/common/bmc-logo.png"
              alt="모바일 넘버원 반찬가게-배민프레시" />
          </a>
        </h1>
        <form name="form_search" className="searchbar">
          <input type="text" />
          <button type="submit">
            <span className="icon_search"></span>
          </button>
        </form>
        <ul className="gnb_top">
          <li className="link_best">
            <a href="#">
              <img src="https://imgur.com/4FuF491.png" />
            </a>
          </li>
          <li className="link_promotion">
            <a href="#">
              <img src="https://imgur.com/LU0MuEk.png" />
            </a>
          </li>
        </ul>
      </div>
    </LogoNavStyled>
  );
};

export default LogoNav;
