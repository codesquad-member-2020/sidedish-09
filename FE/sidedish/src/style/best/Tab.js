import styled from "styled-components";

const TabBox = styled.div`
	font-weight: bold;
	height: 100%;
	background: #fff;
	display: flex;
	justify-content: center;
	align-items: center;
	:not(:last-child) {
		border-right: 2px solid #eee;
	}
	${(props) =>
		props.active
			? { background: "#1FCBC7", color: "#fff" }
			: { background: "#fff", color: "#8F8F8F" }}
	transition: all 0.1s ease-in-out;
	cursor: pointer;
`;

export { TabBox };
