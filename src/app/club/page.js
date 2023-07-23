'use client'
import React from 'react'
import styles from '@/styles/Club.module.css'
import BottomNavigation from '@/app/components/BottomNavigation'
import Image from 'next/image'
import { Carousel } from 'react-responsive-carousel'
import 'react-responsive-carousel/lib/styles/carousel.min.css'
import Link from 'next/link'

const Club = () => {
  const carouselImages = [
    '/assets/profile.png',
    '/assets/profile.png',
    '/assets/profile.png',
    '/assets/profile.png'
  ]
  const myClubName = 'abc'

  return (
    <div>
      <div className={styles.top}>
        <div className={styles.title}>이런 동아리는 어때요? 👀</div>
        <Image src='/assets/search.svg' alt='Search' width={24} height={24}/>
      </div>
      <div className={styles.image_slider}>
        <Carousel
          autoPlay={true}
          infiniteLoop={true}
          showArrows={false}
          showStatus={false}
          showIndicators={false}
          showThumbs={false}
        >
          {
            carouselImages.map((c, i) => {
              return (
                <div className={styles.carousel_item}>
                  <img className={styles.carousel_img} src="/assets/profile.png" alt="Image" />
                  <p className={styles.page}>{i+1} / 4</p>
                </div>
              )
            })
          }
        </Carousel>
      </div>
      <div className={styles.title2}>내 동아리</div>
      <div className={styles.my_club_container}>
        <Link className={styles.my_club} href={`/club/${myClubName}`}>
          <img className={styles.profile} src='assets/profile.png' alt='Profile'/>
          <p className={styles.name}>동아리 이름</p>
        </Link>
        <div className={styles.my_club}>
          <img className={styles.profile} src='assets/profile.png' alt='Profile'/>
          <p className={styles.name}>동아리 이름</p>
        </div>
        <div className={styles.my_club}>
          <img className={styles.profile} src='assets/profile.png' alt='Profile'/>
          <p className={styles.name}>동아리 이름</p>
        </div>
        <div className={styles.my_club}>
          <img className={styles.profile} src='assets/profile.png' alt='Profile'/>
          <p className={styles.name}>동아리 이름</p>
        </div>
        <div className={styles.my_club}>
          <img className={styles.profile} src='assets/profile.png' alt='Profile'/>
          <p className={styles.name}>동아리 이름</p>
        </div>
        <div className={styles.my_club}>
          <img className={styles.profile} src='assets/profile.png' alt='Profile'/>
          <p className={styles.name}>동아리 이름</p>
        </div>
      </div>
      <div className={styles.category}>
        <div className={styles.item}>
          운동 / 스포츠
        </div>
        <div className={styles.item}>
          운동 / 스포츠
        </div>
        <div className={styles.item}>
          운동 / 스포츠
        </div>
        <div className={styles.item}>
          운동 / 스포츠
        </div>
        <div className={styles.item}>
          운동 / 스포츠
        </div>
        <div className={styles.item}>
          운동 / 스포츠
        </div>
        <div className={styles.item}>
          운동 / 스포츠
        </div>
        <div className={styles.item}>
          운동 / 스포츠
        </div>
      </div>
      <div className={styles.club_container}>
        <div className={styles.club}>
          <img className={styles.profile} src='/assets/profile.png' alt='Profile'/>
          <div>
            <p className={styles.text}>카테고리</p>
            <p>동아리명</p>
            <div className={styles.info_container}>
              <p className={styles.info}><Image src='/assets/club/count.svg' alt='Count' width={20} height={20}/> 00명</p>
              <p className={styles.info}><Image src='/assets/club/location.svg' alt='Location' width={20} height={20}/> 장소</p>
            </div>
          </div>
        </div>
        <div className={styles.club}>
          <img className={styles.profile} src='/assets/profile.png' alt='Profile'/>
          <div>
            <p className={styles.text}>카테고리</p>
            <p>동아리명</p>
            <div className={styles.info_container}>
              <p className={styles.info}><Image src='/assets/club/count.svg' alt='Count' width={20} height={20}/> 00명</p>
              <p className={styles.info}><Image src='/assets/club/location.svg' alt='Location' width={20} height={20}/> 장소</p>
            </div>
          </div>
        </div>
        <div className={styles.club}>
          <img className={styles.profile} src='/assets/profile.png' alt='Profile'/>
          <div>
            <p className={styles.text}>카테고리</p>
            <p>동아리명</p>
            <div className={styles.info_container}>
              <p className={styles.info}><Image src='/assets/club/count.svg' alt='Count' width={20} height={20}/> 00명</p>
              <p className={styles.info}><Image src='/assets/club/location.svg' alt='Location' width={20} height={20}/> 장소</p>
            </div>
          </div>
        </div>
        <div className={styles.club}>
          <img className={styles.profile} src='/assets/profile.png' alt='Profile'/>
          <div>
            <p className={styles.text}>카테고리</p>
            <p>동아리명</p>
            <div className={styles.info_container}>
              <p className={styles.info}><Image src='/assets/club/count.svg' alt='Count' width={20} height={20}/> 00명</p>
              <p className={styles.info}><Image src='/assets/club/location.svg' alt='Location' width={20} height={20}/> 장소</p>
            </div>
          </div>
        </div>
        <div className={styles.club}>
          <img className={styles.profile} src='/assets/profile.png' alt='Profile'/>
          <div>
            <p className={styles.text}>카테고리</p>
            <p>동아리명</p>
            <div className={styles.info_container}>
              <p className={styles.info}><Image src='/assets/club/count.svg' alt='Count' width={20} height={20}/> 00명</p>
              <p className={styles.info}><Image src='/assets/club/location.svg' alt='Location' width={20} height={20}/> 장소</p>
            </div>
          </div>
        </div>
        <button className={styles.all_btn}>모두 보기</button>
      </div>
      <div className={styles.recommended_title}>
        <div className={styles.sub_title}>
          세상 모든 덕질 <br/><span style={{color: '#F6990F'}}>만화 / 애니메이션</span> 동아리
        </div>
        <Image src='/assets/club/refresh.svg' alt='Refresh' width={24} height={24}/>
      </div>
      <div className={styles.recommended_club_container}>
        <div className={styles.recommended_club}>
          <img className={styles.profile} src='/assets/profile.png' alt='Profile'/>
          <p className={styles.text}>동아리 명</p>
          <p className={styles.info}>동아리 소개 문구입니다.</p>
          <button className={styles.around_btn}>둘러보기</button>
        </div>
        <div className={styles.recommended_club}>
          <img className={styles.profile} src='/assets/profile.png' alt='Profile'/>
          <p className={styles.text}>동아리 명</p>
          <p className={styles.info}>동아리 소개 문구입니다.</p>
          <button className={styles.around_btn}>둘러보기</button>
        </div>
        <div className={styles.recommended_club}>
          <img className={styles.profile} src='/assets/profile.png' alt='Profile'/>
          <p className={styles.text}>동아리 명</p>
          <p className={styles.info}>동아리 소개 문구입니다.</p>
          <button className={styles.around_btn}>둘러보기</button>
        </div>
      </div>
      <div className={styles.sub_title}>주제별 찾기</div>
      <div className={styles.topic_container}>
        <div className={styles.topic}>
          <p>운동/스포츠</p>
        </div>
        <div className={styles.topic}>
          <p>운동/스포츠</p>
        </div>
        <div className={styles.topic}>
          <p>운동/스포츠</p>
        </div>
        <div className={styles.topic}>
          <p>운동/스포츠</p>
        </div>
        <div className={styles.topic}>
          <p>운동/스포츠</p>
        </div>
        <div className={styles.topic}>
          <p>운동/스포츠</p>
        </div>
        <div className={styles.topic}>
          <p>운동/스포츠</p>
        </div>
        <div className={styles.topic}>
          <p>운동/스포츠</p>
        </div>
        <div className={styles.topic}>
          <p>운동/스포츠</p>
        </div>
        <div className={styles.topic}>
          <p>운동/스포츠</p>
        </div>
      </div>
      <BottomNavigation url='/club'/>
    </div>
  )
}

export default Club