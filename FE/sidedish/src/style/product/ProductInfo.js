import styled from "styled-components";

const InfoContainer = styled.div`
	width: 60%;
	margin-left: 20px;
	* {
		width: 100%;
	}
`;

const Title = styled.h2`
	font-size: 28px;
	font-weight: bold;
	margin-bottom: 7px;
`;

const SubTitle = styled.p`
	font-size: 13.5px;
	color: #666;
	margin-bottom: 12px;
`;

const ContentContainer = styled.dl`
	display: grid;
	grid-template-columns: max-content auto;
	font-size: 13.5px;
	line-height: 1.3;
	margin-bottom: 12px;
`;

const ContentTerm = styled.dt`
	grid-column-start: 1;
	font-weight: bold;
	padding: 8px 0;
`;

const ContentDescription = styled.dd`
	grid-column-start: 2;
	color: #666;
	padding: 8px 0;
	padding-left: 15px;
`;

const PriceContainer = styled.dd`
	display: flex;
	justify-content: flex-end;
	align-items: center;
	padding: 15px 0 20px 70%;
	margin: 7px 0;
	border-top: 1px solid #e0e0e0;
	border-bottom: 1px solid #e0e0e0;
`;

const OriginalPrice = styled.del`
	opacity: 0.3;
	font-size: 14px;
	font-weight: bold;
	padding-top: 5%;
	height: 100%;
	display: inline-block;
	margin-right: 10px;
`;

const SellingPrice = styled.p`
	height: 100%;
	font-size: 30px;
	font-weight: bold;
	letter-spacing: -0.04em;
	margin: 2px 0;
	display: flex;
`;

const Unit = styled.span`
	font-size: 13px;
	font-weight: bold;
	padding-top: 13px;
	margin-left: 4px;
`;

const CountContainer = styled.div`
	display: flex;
	padding-left: 83%;
`;

const CountTerm = styled.dt`
	display: flex;
	color: #000;
	align-items: center;
	font-weight: bold;
`;

const CountBtn = styled.button`
	width: 30px;
	height: 34px;
	font-size: 20px;
	background: #fff;
	border: 1px solid #e0e0e0;
	cursor: pointer;
	&:focus {
		outline: none;
	}
`;

const Count = styled.span`
	width: 30px;
	height: 34px;
	border-top: 1px solid #e0e0e0;
	border-bottom: 1px solid #e0e0e0;
	text-align: center;
	padding-top: 8px;
`;

const TotalContainer = styled.div`
	display: flex;
	justify-content: flex-end;
	padding: 5px 0;
	margin-bottom: 25px;
`;

const TotalText = styled.div`
	font-weight: bold;
	font-size: 13px;
	width: 70px;
	padding-top: 10px;
	margin-right: 10px;
`;

const TotalAmount = styled.span`
	height: 100%;
	color: #2ac1bc;
	font-size: 30px;
	font-weight: bold;
	letter-spacing: -0.04em;
	text-align: right;
	width: fit-content;
`;

const TotalUnit = styled.span`
	color: #2ac1bc;
	font-size: 13px;
	font-weight: bold;
	padding-top: 13px;
	margin-left: 4px;
	width: 16px;
`;

const CartBtn = styled.div`
	display: flex;
	justify-content: center;
	align-items: center;
	background: #2ac1bc;
	color: #fff;
	height: 50px;
	border-radius: 5px;
	font-weight: bold;
	letter-spacing: 1.2;
	cursor: pointer;
`;

export {
	InfoContainer,
	Title,
	SubTitle,
	ContentContainer,
	ContentTerm,
	ContentDescription,
	PriceContainer,
	OriginalPrice,
	SellingPrice,
	Unit,
	CountContainer,
	CountTerm,
	CountBtn,
	Count,
	TotalContainer,
	TotalText,
	TotalAmount,
	TotalUnit,
	CartBtn,
};
