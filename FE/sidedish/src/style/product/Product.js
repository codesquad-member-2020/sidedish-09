import styled from "styled-components";

const ProdBackground = styled.div`
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	display: flex;
	align-items: center;
	justify-content: center;
	z-index: 98;
	height: 100%;
	width: 100%;
	background-color: rgba(0, 0, 0, 0.3);
`;

const ProdContainer = styled.div`
	position: relative;
	z-index: 99;
	width: 1024px;
	height: 480px;
	margin: 0 auto;
	background: #fff;
	border-radius: 5px;
	padding: 18px;
	display: flex;
`;

const CloseBtn = styled.button`
	position: absolute;
	top: 7px;
	right: 10px;
	font-size: 34px;
	line-height: 1;
	background: transparent;
	border: none;
	cursor: pointer;
	&:focus {
		outline: none;
	}
`;

export { ProdBackground, ProdContainer, CloseBtn };
