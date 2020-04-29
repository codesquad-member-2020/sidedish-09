import React, { useState, createContext } from "react";
import Tab from "components/best/Tab";
import TabPanel from "components/best/TabPanel";

let TabContext;
const { Provider } = (TabContext = createContext());

const TabProvider = ({ children }) => {
	const [activeId, setActiveId] = useState();
	const handleClick = (id = null) => {
		if (id) setActiveId(id);
	};
	return <Provider value={{ activeId, handleClick }}>{children}</Provider>;
};

TabProvider.Tab = Tab;
TabProvider.TabPanel = TabPanel;

export { TabContext, TabProvider };
