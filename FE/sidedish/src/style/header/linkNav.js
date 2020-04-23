import styled from "styled-components";

const LinkNavStyled = styled.div`
  padding: 0 300px;
  .inner {
    display: flex;
    justify-content: space-between;
    padding: 10px 0;
  }
  
  .mem-utils {
    display: flex;
    color: #666;
    
    li {
      position: relative;
      &:hover {
        color: #2ac1bc;
      }
    }
  
    li+li {
      padding-left: 6px;
      margin-left: 5px;
  
      &::before {
        content: '';
        position: absolute;
        left: 0;
        top: 50%;
        width: 1px;
        height: 10px;
        margin-top: -5px;
        background: #eee;
      }
    }
  }
`;

export { LinkNavStyled };

