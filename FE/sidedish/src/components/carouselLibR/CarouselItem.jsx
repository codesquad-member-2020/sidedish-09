import React, { useContext } from "react";
import PropTypes from "prop-types";
import Badge from "./Badge";
import {
	CarouselItemContainer,
	ThumbnailContainer,
	Thumbnail,
	Overlay,
	DetailContainer,
	Title,
	Description,
	PriceContainer,
	OriginalPrice,
	SellingPrice,
	Unit,
	BadgeContainer,
} from "style/carouselLibR/CarouselItem";
import { ProductContext } from "contexts/productContext";
import prodMockData from "assets/prodMockdata";

const CarouselItem = ({
	image,
	alt,
	deliveryType,
	title,
	description,
	originalPrice,
	sellingPrice,
	badge,
}) => {
	const { handleModal } = useContext(ProductContext);

	return (
		<CarouselItemContainer onClick={() => handleModal(prodMockData)}>
			<ThumbnailContainer>
				<div>
					<Thumbnail src={image} alt={alt} />
					<Overlay>
						{deliveryType.map((type) => (
							<div>{type}</div>
						))}
					</Overlay>
				</div>
			</ThumbnailContainer>
			<DetailContainer>
				<Title>{title}</Title>
				<Description>{description}</Description>
				<PriceContainer>
					{originalPrice ? (
						<p>
							<OriginalPrice>{originalPrice}</OriginalPrice>
						</p>
					) : null}
					<SellingPrice>
						{sellingPrice.slice(0, -1)}
						<Unit>원</Unit>
					</SellingPrice>
				</PriceContainer>
			</DetailContainer>
			<BadgeContainer>
				{badge ? badge.map((name, i) => <Badge key={name + i} name={name} />) : null}
			</BadgeContainer>
		</CarouselItemContainer>
	);
};

CarouselItem.propTypes = {
	image: PropTypes.string.isRequired,
	alt: PropTypes.string.isRequired,
	deliveryType: PropTypes.arrayOf(PropTypes.string).isRequired,
	title: PropTypes.string.isRequired,
	description: PropTypes.string.isRequired,
	originalPrice: PropTypes.string,
	sellingPrice: PropTypes.string.isRequired,
	badge: PropTypes.arrayOf(PropTypes.string),
};

export default CarouselItem;
