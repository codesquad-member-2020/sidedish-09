import React from "react";
import CarouselHeader from "./CarouselHeader";
import Slider from "react-slick";
import CarouselItem from "./CarouselItem";
import mockData from "assets/mockData.js";
import "style/carouselLibR/Buttons.css";
import { CarouselContainer } from "style/carouselLibR/Carousel";
import { ProductProvider } from "contexts/productContext";

const SETTINGS = {
	infinite: true,
	speed: 500,
	slidesToShow: 4,
	slidesToScroll: 4,
	initialSlide: 0,
};

const Carousel = () => (
	<>
		<CarouselHeader title={mockData.title} subTitle={mockData.description} />
		<ProductProvider>
			<CarouselContainer>
				<Slider {...SETTINGS}>
					{mockData.items.map(
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
	</>
);

export default Carousel;
