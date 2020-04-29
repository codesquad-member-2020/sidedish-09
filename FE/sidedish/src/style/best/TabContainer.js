import styled from "styled-components";

const TabContainer = styled.div`
	width: 100%;
`;

const Tabs = styled.div`
	width: 980px;
	display: grid;
	grid-template-columns: repeat(auto-fill, 25%);
	align-items: center;
	height: 48px;
	margin-bottom: 22px;
`;

const Panels = styled.div`
	width: 980px;
	display: flex;
	justify-content: flex-start;
	align-items: center;
`;

export { TabContainer, Tabs, Panels };
