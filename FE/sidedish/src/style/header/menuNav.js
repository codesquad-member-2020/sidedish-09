import styled from 'styled-components';

const MenuNavStyled = styled.div`
  position: relative;
  background: #483f35;
  .inner {
    padding: 0
  }
  .menuNav {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
    > li {
      position: relative;
      > span {
        display: block;
        padding: 12px 10px 15px;
        margin: 4px 0 1px;
        font-weight: bold;
        font-size: 15px;
        color: #fff;
        cursor: pointer;
      }
      ul {
        display: none;
        position: absolute;
        top: 45px;
        left: -1px;
        width: 160px;
        // height: 100px;
        padding: 15px 10px;
        border: 1px solid #ccc;
        border-top: 0;
        background: #fff;
        li {
          span {
            position: relative;
            font-size: 14px;
            color: #666;
            cursor: pointer;
          }
          &:hover {
            span {
              color: #2ac1bc;
              &::before {
                content: '';
                position: absolute;
                left: 0;
                bottom: -2px;
                width: 100%;
                height: 1px;
                background: #2ac1bc;
              }
            }
          }
        }
        li + li {
          margin-top: 10px;
        }
      }
      &:hover {
        > span {
          color: #2ac1bc;
          background: #fff;
        }
        ul {
          display: block;
        }
      }
    }
  }
`

export { MenuNavStyled };