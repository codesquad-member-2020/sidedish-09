import { createGlobalStyle } from "styled-components";
import reset from "styled-reset";

const GlobalStyles = createGlobalStyle`
  ${reset};
  * {
    box-sizing: border-box;
  }
  body {
    font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
  }
  #wrap {
    overflow: hidden;
    background: #fff;
  }
  .inner {
    width: ${(props) => props.width};
    margin: 0 auto;
  }
`;

export default GlobalStyles;
