import styled from "styled-components";

const CarouselItemContainer = styled.div`
	width: 250px;
	padding: 0 auto;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	cursor: pointer;
`;

const ThumbnailContainer = styled.div`
	width: 100%;
	height: 215px;
	display: flex;
	justify-content: center;
	div {
		position: relative;
	}
`;

const Overlay = styled.div`
	position: absolute;
	top: 0;
	left: 0;
	width: 215px;
	height: 215px;
	border-radius: 50%;
	transition: all 0.1s ease-in-out;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	background: rgba(0, 0, 0, 0.5);
	opacity: 0;
	div {
		color: #fff;
		font-size: 14px;
		letter-spacing: 1.2;
		padding: 10px;
		&:first-child {
			border-bottom: 1px solid #fff;
		}
	}
	&:hover {
		opacity: 1;
	}
`;

const Thumbnail = styled.img`
	width: 215px;
	height: 215px;
	border-radius: 50%;
	position: absolute;
	top: 0;
	left: 0;
`;

const DetailContainer = styled.dl`
	width: 215px;
	margin: 16px 0;
`;

const Title = styled.dt`
	width: 100%;
	font-size: 16px;
	line-height: 1.5em;
	font-weight: 600;
	letter-spacing: -0.07em;
	text-align: center;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	margin-bottom: 5px;
`;

const Description = styled.dd`
	width: 100%;
	font-size: 13px;
	color: #666;
	text-align: center;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	margin-bottom: 16px;
`;

const PriceContainer = styled.dd`
	display: flex;
	justify-content: center;
	align-items: center;
	height: 25px;
`;

const OriginalPrice = styled.del`
	color: #666;
	font-size: 14px;
	margin: 6px 5px 0;
	display: inline-block;
`;

const SellingPrice = styled.p`
	height: 100%;
	color: #2ac1bc;
	font-size: 25px;
	font-weight: bold;
	letter-spacing: -0.04em;
	margin: 2px 5px 0px;
	display: inline-block;
`;

const Unit = styled.span`
	font-size: 13px;
	font-weight: bold;
	margin-bottom: 10px;
	margin-left: 2px;
	display: inline-block;
`;

const BadgeContainer = styled.div`
	display: flex;
`;

export {
	CarouselItemContainer,
	ThumbnailContainer,
	Overlay,
	Thumbnail,
	DetailContainer,
	Title,
	Description,
	PriceContainer,
	OriginalPrice,
	SellingPrice,
	Unit,
	BadgeContainer,
};
