import React, { useState, useEffect } from "react";
import CarouselHeader from "./CarouselHeader";
import Slider from "react-slick";
import Loader from "../loader/Loader";
import CarouselItem from "./CarouselItem";
import axios from "axios";
import "style/carouselLibR/Buttons.css";
import { CarouselContainer } from "style/carouselLibR/Carousel";
import { ProductProvider } from "contexts/productContext";

const loaderContainerStyle = {
	width: "100%",
	height: "510px",
	display: "flex",
	justifyContent: "center",
	alignItems: "center",
};

const SETTINGS = {
	infinite: true,
	speed: 500,
	slidesToShow: 4,
	slidesToScroll: 4,
	initialSlide: 0,
};

const Carousel = () => {
	const [loading, setLoading] = useState(true);
	const [data, setData] = useState(null);

	const getCarouselData = async () => {
		try {
			const response = await axios.get(`${process.env.REACT_APP_BASE_URL}categories?type=carousel`);
			const { status, data } = response;
			if (status === 200) {
				setData(data.find((carousel) => carousel.title === "밑반찬"));
			}
		} catch (err) {
			console.log(err);
		}
		setLoading(false);
	};

	useEffect(() => {
		getCarouselData();
	}, []);

	return loading ? (
		<div style={loaderContainerStyle}>
			<Loader />
		</div>
	) : (
		<div>
			<CarouselHeader title={data.title} subTitle={data.description} />
			<ProductProvider>
				<CarouselContainer>
					<Slider {...SETTINGS}>
						{data.items.map(
							({
								detail_hash,
								image,
								alt,
								delivery_type,
								title,
								description,
								n_price,
								s_price,
								badge,
							}) => {
								return (
									<CarouselItem
										key={detail_hash}
										hash={detail_hash}
										image={image}
										alt={alt}
										deliveryType={delivery_type}
										title={title}
										description={description}
										originalPrice={n_price}
										sellingPrice={s_price}
										badge={badge}
									/>
								);
							}
						)}
					</Slider>
				</CarouselContainer>
			</ProductProvider>
		</div>
	);
};

export default Carousel;
