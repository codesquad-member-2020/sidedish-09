import styled from "styled-components";

const LogoNavStyled = styled.div`
  padding: 0;
  .header {
    position: relative;
    height: 98px;
    width: 980px;
    margin: 0 auto;
    overflow: hidden;
  }
  
  .header h1 {
    float: left;
    margin: 16px 0 0 5px;
  }
  
  .header .searchbar {
    position: relative;
    float: left;
    margin: 30px 0 0 46px;
  }
  
  .header .searchbar input {
    border: 1px solid #cfd0d2;
    width: 210px;
    height: 40px;
    padding: 0 38px 0 15px;
    color: #888;
    font-family: Verdana, 나눔고딕, "Nanum", "Malgun Gothic", sans-serif;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
  }
  
  .header .searchbar button {
    width: 38px;
    height: 38px;
    text-indent: -3000px;
    position: absolute;
    top: 1px;
    right: 1px;
    border: 0;
  }
  
  .header ul.gnb_top {
    overflow: hidden;
    float: right;
    margin-right: 5px;
  }
  
  .header ul.gnb_top>li {
    float: left;
  }
  
  .header ul.gnb_top>li a {
    display: block;
    height: 48px;
    margin: 25px 0 25px 50px;
  }
  
  .gnb_top>li>a>img {
    width: 80px;
    height: 45px;
  }
`;

export { LogoNavStyled };