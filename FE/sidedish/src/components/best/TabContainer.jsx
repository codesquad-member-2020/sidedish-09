import React, { useEffect, useContext } from "react";
import PropTypes from "prop-types";
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
					<TabProvider.Tab key={bestItem.category_id} id={bestItem.category_id}>
						{bestItem.title}
					</TabProvider.Tab>
				))}
			</Tabs>
			<Panels>
				{data.map((bestItem) => (
					<TabProvider.TabPanel key={bestItem.category_id} id={bestItem.category_id}>
						{bestItem.items.slice(0, 3).map((items, i) => (
							<BestItem key={bestItem.category_id + i} {...items} />
						))}
					</TabProvider.TabPanel>
				))}
			</Panels>
		</>
	);
};

TabContainer.propTypes = {
	initialId: PropTypes.number.isRequired,
	data: PropTypes.arrayOf(
		PropTypes.shape({
			category_id: PropTypes.number.isRequired,
			title: PropTypes.string.isRequired,
			items: PropTypes.array.isRequired,
		}).isRequired
	).isRequired,
};

export default TabContainer;
