import styled from "styled-components";

const TabBox = styled.div`
	font-weight: bold;
	height: 100%;
	background: #fff;
	display: flex;
	justify-content: center;
	align-items: center;
	color: ${(props) => (props.active ? "#fff" : "grey")};
	transition: all 0.1s ease-in-out;
	cursor: pointer;
`;

export { TabBox };
