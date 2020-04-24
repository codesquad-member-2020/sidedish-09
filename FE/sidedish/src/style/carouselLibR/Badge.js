import styled from "styled-components";

const BackgroundStyles = {
	이벤트특가: "background: #91a9be",
	론칭특가: "background: #c6a8a5",
};

const BadgeBox = styled.div`
	height: 22px;
	color: #fff;
	font-size: 12px;
	font-weight: 400;
	line-height: 11px;
	padding: 6px;
	${({ color }) => BackgroundStyles[color]};
`;

export { BadgeBox };
