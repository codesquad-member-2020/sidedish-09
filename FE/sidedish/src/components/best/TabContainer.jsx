import React, { useEffect, useContext } from "react";
import BestItem from "./BestItem";
import { TabContext, TabProvider } from "contexts/tabContext";
import { Tabs, Panels } from "style/best/TabContainer";

const TabContainer = ({ initialId, data }) => {
	const { handleClick } = useContext(TabContext);

	useEffect(() => handleClick(initialId), []);

	return (
		<>
			<Tabs>
				{data.map((bestItem) => (
					<TabProvider.Tab id={bestItem.category_id}>{bestItem.title}</TabProvider.Tab>
				))}
			</Tabs>
			<Panels>
				{data.map((bestItem) => (
					<TabProvider.TabPanel id={bestItem.category_id}>
						{bestItem.items.slice(0, 3).map((items, i) => (
							<BestItem key={bestItem.category_id + i} {...items} />
						))}
					</TabProvider.TabPanel>
				))}
			</Panels>
		</>
	);
};

export default TabContainer;
