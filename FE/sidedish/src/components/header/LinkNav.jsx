import React from "react";
import {LinkNavStyled} from '../../style/header/linkNav'

const LinkNav = () => {
  return (
    <LinkNavStyled>
      <div className="inner">
        <span>배민찬 앱 다운로드</span>
        <ul className="mem-utils">
          <li>로그인</li>
          <li>회원가입</li>
          <li>마이페이지</li>
          <li>고객센터</li>
          <li>새벽배송 지역검색</li>
          <li>이벤트 게시판</li>
          <li>장바구니</li>
        </ul>
      </div>
    </LinkNavStyled>
  );
};

export default LinkNav;
