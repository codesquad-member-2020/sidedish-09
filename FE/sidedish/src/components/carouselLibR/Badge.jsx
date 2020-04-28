import React from "react";
import { BadgeBox } from "style/carouselLibR/Badge";

const Badge = ({ name }) => (
	<BadgeBox color={name}>
		<span>{name}</span>
	</BadgeBox>
);

export default Badge;
