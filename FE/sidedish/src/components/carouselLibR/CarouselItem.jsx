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
	BadgeContainer,
} from "../../style/CarouselItem";

const CarouselItem = ({ image, alt, title, description, originalPrice, sellingPrice, badge }) => {
	return (
		<CarouselItemContainer>
			<ThumbnailContainer>
				<Thumbnail src={image} alt={alt} />
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

export default CarouselItem;