import React from "react";
import Slider from "react-slick";
import CarouselItem from "./CarouselItem";
import mockData from "../../assets/mockData.js";
import "./style.css";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";

const Carousel = () => {
	const SETTINGS = {
		infinite: true,
		speed: 500,
		slidesToShow: 4,
		slidesToScroll: 4,
	};

	return (
		<div className="container">
			<div>
				<h2>밑반찬</h2>
				<p>언제 먹어도 든든한 반찬</p>
			</div>
			<Slider {...SETTINGS}>
				{mockData.body.map(
					({ detail_hash, image, alt, title, description, n_price, s_price, badge }) => {
						return (
							<CarouselItem
								key={detail_hash}
								image={image}
								alt={alt}
								title={title}
								description={description}
								normalPrice={n_price}
								specialPrice={s_price}
								badge={badge}
							/>
						);
					}
				)}
			</Slider>
		</div>
	);
};

export default Carousel;
