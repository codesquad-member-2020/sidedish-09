import React from "react";
import Badge from "./Badge";
import {
	CarouselItemContainer,
	ThumbnailContainer,
	Thumbnail,
	DetailContainer,
	Title,
	Description,
	PriceContainer,
	OriginalPrice,
	SellingPrice,
	Unit,
} from "../../style/CarouselItem";

const CarouselItem = ({ image, alt, title, description, normalPrice, specialPrice, badge }) => {
	return (
		<CarouselItemContainer>
			<ThumbnailContainer>
				<Thumbnail src={image} alt={alt} />
			</ThumbnailContainer>
			<DetailContainer>
				<Title>{title}</Title>
				<Description>{description}</Description>
				<PriceContainer>
					{normalPrice ? (
						<p>
							<OriginalPrice>{normalPrice}</OriginalPrice>
						</p>
					) : null}
					<SellingPrice>
						{specialPrice.slice(0, -1)}
						<Unit>원</Unit>
					</SellingPrice>
				</PriceContainer>
			</DetailContainer>
			<div>{badge ? badge.map((name, i) => <Badge key={name + i} name={name} />) : null}</div>
		</CarouselItemContainer>
	);
};

export default CarouselItem;
