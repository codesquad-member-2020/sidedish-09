import React from "react";
import { BadgeBox } from "../../style/Badge";

const Badge = ({ name }) => (
	<BadgeBox color={name}>
		<span>{name}</span>
	</BadgeBox>
);

export default Badge;
