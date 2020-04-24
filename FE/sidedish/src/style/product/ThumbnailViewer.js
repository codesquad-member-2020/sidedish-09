import styled from "styled-components";

const ThumbnailContainer = styled.div`
	width: 40%;
	* {
		width: 100%;
	}
`;

const Current = styled.div`
	width: 100%;
`;

const List = styled.ul`
	display: flex;
	overflow: auto;
	margin-top: 7px;
`;

const Thumbnail = styled.li`
	width: 52px;
	height: 52px;
	padding-right: 5px;
`;

export { ThumbnailContainer, Current, List, Thumbnail };
