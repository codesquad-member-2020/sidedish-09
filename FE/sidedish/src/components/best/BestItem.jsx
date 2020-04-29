import React from "react";
import PropTypes from "prop-types";
import Badge from "components/carouselLibR/Badge";
import {
	BestItemBox,
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
} from "style/best/BestItem";

const BestItem = ({ ...items }) => {
	const { image, alt, title, description, n_price, s_price, badge } = items;
	return (
		<BestItemBox>
			<ThumbnailContainer>
				<Thumbnail src={image} alt={alt} />
				<BadgeContainer>
					{badge ? badge.map((name, i) => <Badge key={name + i} name={name} />) : null}
				</BadgeContainer>
			</ThumbnailContainer>
			<DetailContainer>
				<Title>{title}</Title>
				<Description>{description}</Description>
				<PriceContainer>
					{n_price ? (
						<p>
							<OriginalPrice>{n_price}</OriginalPrice>
						</p>
					) : null}
					<SellingPrice>
						{s_price}
						<Unit>원</Unit>
					</SellingPrice>
				</PriceContainer>
			</DetailContainer>
		</BestItemBox>
	);
};

BestItem.propTypes = {
	image: PropTypes.string.isRequired,
	alt: PropTypes.string.isRequired,
	title: PropTypes.string.isRequired,
	description: PropTypes.string.isRequired,
	n_price: PropTypes.string,
	s_price: PropTypes.string.isRequired,
	badge: PropTypes.arrayOf(PropTypes.string).isRequired,
};

export default BestItem;
