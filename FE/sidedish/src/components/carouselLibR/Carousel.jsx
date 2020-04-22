import React from "react";
import Slider from "react-slick";
import CarouselItem from "./CarouselItem";
import mockData from "../../assets/mockData.js";
import "./style.css";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";

export default class Carousel extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			data: mockData.body,
			loading: true,
			error: null,
		};
	}

	render() {
		var settings = {
			infinite: true,
			speed: 500,
			slidesToShow: 4,
			slidesToScroll: 4,
		};

		const { data } = this.state;
		console.log(data);

		return (
			<div className="container">
				<div>
					<h2>밑반찬</h2>
					<p>언제 먹어도 든든한 반찬</p>
				</div>
				<Slider {...settings}>
					{data.map((itemData) => (
						<CarouselItem
							key={itemData.detail_hash}
							image={itemData.image}
							alt={itemData.alt}
							title={itemData.title}
							description={itemData.description}
							normalPrice={itemData.n_price}
							specialPrice={itemData.s_price}
							badge={itemData.badge}
						/>
					))}
				</Slider>
			</div>
		);
	}
}
