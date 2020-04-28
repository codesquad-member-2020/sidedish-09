import React, { useState, useEffect } from "react";
import BestHeader from "./BestHeader";
import Tab from "./Tab";
import BestItem from "./BestItem";
import Loader from "components/state/Loader";
import Message from "components/state/Message";
import axios from "axios";
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
		<div>
			<BestHeader />
			<Tab />
			<div></div>
			{error && <Message text={error.text} color={error.color} />}
		</div>
	);
};

export default Best;