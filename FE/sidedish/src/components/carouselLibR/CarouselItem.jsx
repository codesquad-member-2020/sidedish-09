import React from "react";
import Badge from "./Badge";

const CarouselItem = ({ image, alt, title, description, normalPrice, specialPrice, badge }) => {
	return (
		<div>
			<div>
				<img src={image} alt={alt} />
			</div>
			<dl>
				<dt>{title}</dt>
				<dd>{description}</dd>
				<dd>
					{normalPrice ? (
						<p>
							{normalPrice}
							<span>원</span>
						</p>
					) : null}
					<p>
						{specialPrice.slice(0, -1)}
						<span>원</span>
					</p>
				</dd>
			</dl>
			<div>{badge ? badge.map((name, i) => <Badge key={name + i} name={name} />) : null}</div>
		</div>
	);
};

export default CarouselItem;
