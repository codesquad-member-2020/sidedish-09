import styled from "styled-components";

const BestItemBox = styled.div`
	width: 320px;
	height: 450px;
	cursor: pointer;
	:not(last-child) {
		margin-right: 10px;
	}
`;

const ThumbnailContainer = styled.div`
	width: 320px;
	height: 320px;
	display: flex;
	justify-content: center;
	position: relative;
`;

const Thumbnail = styled.img`
	width: 100%;
	height: 100%;
	position: absolute;
	top: 0;
	left: 0;
`;

const DetailContainer = styled.dl`
	width: 100%;
	background: #fff;
	padding-top: 17px;
	padding-bottom: 17px;
	padding-left: 17px;
	padding-right: 17px;
`;

const Title = styled.dt`
	width: 100%;
	font-size: 16px;
	line-height: 1.5em;
	font-weight: 600;
	letter-spacing: -0.07em;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	margin-bottom: 5px;
`;

const Description = styled.dd`
	width: 100%;
	font-size: 13px;
	color: #666;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	margin-bottom: 16px;
`;

const PriceContainer = styled.dd`
	display: flex;
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
	justify-content: flex-start;
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
	padding: 10px;
`;

export {
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
};
