import React, { useState } from 'react';
import styled from 'styled-components';
import Carousel from './Carousel';
import Detail from './Detail';

const Main = () => {
  const [detail, setDetail] = useState(null);
  const [detailVisible, setDetailVisible] = useState(false);
  const onClickDetailItem = (item, title) => {
    setDetail({ item, title });
  };
  const onclickClose = () => {
    setDetailVisible(true);
    setTimeout(() => {
      setDetailVisible(false);
      setDetail(null);
    }, 300);
  };

  return (
    <MainStyled>
      <div className='inner'>
        <Carousel url='main' onClickHandler={onClickDetailItem} />
      </div>
      {!detail ? '' : <Detail data={detail} onClickHandler={onclickClose} disappear={detailVisible} />}
    </MainStyled>
  );
};

const MainStyled = styled.div`
  min-height: 600px;
`;

export default Main;