import React from 'react';
import Slider from 'react-slick';
import axios from 'axios';
import useAsync from 'hooks/useAsync';
import 'slick-carousel/slick/slick.css';
import 'slick-carousel/slick/slick-theme.css';
import 'style/carouselLibH/carousel.scss';


const Carousel = props => {
  const onClickTargetID = async e => {
    e.preventDefault();
    const target = e.currentTarget;
    const targetID = target.dataset.item;
    const targetTitle = target.querySelector('.item-title').innerHTML;
    const response = await axios.get(`${process.env.REACT_APP_BASE_URL}items/${targetID}`);
    return props.onClickHandler(response.data, targetTitle);
  };

  const getItem = async () => {
    const response = await axios.get(`${process.env.REACT_APP_BASE_URL}categories?type=carousel`);
    const { data } = response;
    const findData = data.find((carousel) => carousel.title === "든든한 반찬");
    return findData.items
  };
  const state = useAsync(getItem);
  const { loading, data: mainItem, error } = state;
  if (loading) return <div>로딩중</div>;
  if (error) return <div>에러</div>;
  if (!mainItem) return null;

  const settings = {
    dots: false,
    infinite: true,
    speed: 800,
    slidesToShow: 4,
    slidesToScroll: 4,
  };
  return (
    <div className='main-list'>
      <p className='main-list-title'>
        <span>든든한 반찬</span>담기만 하면 완성되는 메인반찬
      </p>
      <div className='inner'>
        <Slider {...settings}>
          {mainItem.map((item, index) => (
            <div className='item' key={index} data-item={item.detail_hash} onClick={onClickTargetID}>
              <div className='item-thumb'>
                <img src={item.image} alt={item.alt} />
                <div className='hover-text'>
                  {item.delivery_type.map((subMenu, index) => (
                    <p key={index}>{subMenu}</p>
                  ))}
                </div>
              </div>
              <div className='item-info'>
                <div className='item-title'>{item.title}</div>
                <div className='item-description'>{item.description}</div>
                <div className='item-price'>
                  {!item.n_price ? (
                    ''
                  ) : (
                    <span className='price-del'>
                      <del>{item.n_price}</del>
                    </span>
                  )}
                  <span className='price-sale'>
                    {item.s_price}
                    <span className='price-unit'></span>
                  </span>
                </div>
                <div className='item-badge'>{!item.badge ? '' : item.badge.map((badge, index) => <span key={index}>{badge}</span>)}</div>
              </div>
            </div>
          ))}
        </Slider>
      </div>
    </div>
  );
};

export default Carousel;