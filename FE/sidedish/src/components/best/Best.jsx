import React, { useState, useEffect } from "react";
import axios from "axios";
import BestHeader from "./BestHeader";
import TabContainer from "./TabContainer";
import Loader from "components/state/Loader";
import Message from "components/state/Message";
import { BestContainer } from "style/best/Best";
import { TabProvider } from "contexts/tabContext";
import { LOADER_CONTAINER_STYLE, MESSAGE } from "@/const";

const Best = () => {
	const [loading, setLoading] = useState(true);
	const [error, setError] = useState(false);
	const [data, setData] = useState(null);

	const getBestData = async () => {
		try {
			const response = await axios.get(`${process.env.REACT_APP_BASE_URL}categories?type=best`);
			const { status, data } = response;
			if (status === 200) {
				setData(data);
			}
		} catch (err) {
			setError(MESSAGE.error);
			console.log(err);
		}
		setLoading(false);
	};

	useEffect(() => {
		getBestData();
	}, []);

	return loading ? (
		<div style={LOADER_CONTAINER_STYLE}>
			<Loader />
		</div>
	) : (
		<BestContainer>
			<BestHeader />
			<TabProvider>
				<TabContainer initialId={data[0].category_id} data={data} />
			</TabProvider>
			{error && <Message text={error.text} color={error.color} />}
		</BestContainer>
	);
};

export default Best;
