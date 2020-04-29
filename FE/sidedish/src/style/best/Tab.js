import styled from "styled-components";

const TabBox = styled.div`
	font-weight: bold;
	height: 100%;
	background: #fff;
	display: flex;
	justify-content: center;
	align-items: center;
	${(props) =>
		props.active ? { background: "#1FCBC7", color: "#fff" } : { background: "#fff", color: "#999" }}
	transition: all 0.1s ease-in-out;
	cursor: pointer;
`;

export { TabBox };
