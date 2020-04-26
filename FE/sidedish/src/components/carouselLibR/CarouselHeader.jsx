import React from "react";
import PropTypes from "prop-types";
import { Header, Title, SubTitle } from "style/carouselLibR/CarouselHeader";

const CarouselHeader = ({ title, subTitle }) => (
	<Header>
		<Title>{title}</Title>
		<SubTitle>{subTitle}</SubTitle>
	</Header>
);

CarouselHeader.propTypes = {
	title: PropTypes.string.isRequired,
	subTitle: PropTypes.string.isRequired,
};

export default CarouselHeader;
