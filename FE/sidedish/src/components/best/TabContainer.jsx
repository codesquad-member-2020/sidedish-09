import React, { useContext } from "react";
import BestItem from "./BestItem";
import { TabContext, TabProvider } from "contexts/tabContext";

const TabContainer = ({ initialId, data }) => {
	const { handleClick } = useContext(TabContext);

	handleClick(initialId);

	return (
		<div>
			<div>
				{data.map((bestItem) => (
					<TabProvider.Tab id={bestItem.category_id}>{bestItem.title}</TabProvider.Tab>
				))}
			</div>
			<div>
				{data.map((bestItem) => (
					<TabProvider.TabPanel id={bestItem.category_id}>
						{bestItem.items.slice(0, 3).map((items) => (
							<BestItem {...items} />
						))}
					</TabProvider.TabPanel>
				))}
			</div>
		</div>
	);
};

export default TabContainer;
