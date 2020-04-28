import React, { useContext } from "react";
import { TabContext } from "contexts/tabContext";

const Tab = ({ children, id }) => {
	const { handleClick } = useContext(TabContext);
	return <div onClick={() => handleClick(id)}>{children}</div>;
};

export default Tab;
