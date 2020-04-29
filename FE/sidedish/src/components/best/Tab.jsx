import React, { useContext } from "react";
import { TabContext } from "contexts/tabContext";
import { TabBox } from "style/best/Tab";

const Tab = ({ children, id }) => {
	const { activeId, handleClick } = useContext(TabContext);
	return (
		<TabBox onClick={() => handleClick(id)} active={activeId === id}>
			{children}
		</TabBox>
	);
};

export default Tab;
