import React from "react";
import { Header, Title, SubTitle } from "style/CarouselHeader";

const CarouselHeader = ({ title, subTitle }) => (
	<Header>
		<Title>{title}</Title>
		<SubTitle>{subTitle}</SubTitle>
	</Header>
);

export default CarouselHeader;
