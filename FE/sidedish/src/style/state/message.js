import styled from "styled-components";

const Container = styled.div`
	width: 100%;
	display: flex;
	justify-content: center;
`;

const Text = styled.span`
	font-size: 20px;
	color: ${(props) => props.color};
`;

export { Container, Text };
