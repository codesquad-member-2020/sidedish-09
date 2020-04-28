import React, { useContext } from "react";
import { TabContext } from "contexts/tabContext";

const TabPanel = ({ children, id }) => {
	const { activeId } = useContext(TabContext);
	return <>{activeId === id && children}</>;
};

export default TabPanel;
