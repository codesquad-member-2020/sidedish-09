import React, { useContext } from "react";
import { TabContext } from "contexts/tabContext";
import { TabBox } from "style/best/Tab";

const Tab = ({ children, id }) => {
	const { handleClick } = useContext(TabContext);
	return <TabBox onClick={() => handleClick(id)}>{children}</TabBox>;
};

export default Tab;
