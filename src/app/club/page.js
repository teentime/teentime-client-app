'use client'
import React from 'react'
import styles from '@/styles/Club.module.css'
import BottomNavigation from '@/app/components/BottomNavigation'
import Image from 'next/image'
import { Carousel } from 'react-responsive-carousel'
import 'react-responsive-carousel/lib/styles/carousel.min.css'
import Link from 'next/link'
import RecommendedClubCard from '../components/club/RecommendedClubCard'
import ClubCard from '../components/club/ClubCard'

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
      </div>
      <div className={styles.category}>
        <div className={styles.item}>
          전체
        </div>
        <div className={styles.item}>
          운동 / 스포츠
        </div>
        <div className={styles.item}>
          만화 / 애니메이션
        </div>
        <div className={styles.item}>
          인문학 / 책 / 글
        </div>
        <div className={styles.item}>
          외국 / 언어
        </div>
        <div className={styles.item}>
          봉사활동
        </div>
        <div className={styles.item}>
          게임 / 오락
        </div>
        <div className={styles.item}>
          요리
        </div>
        <div className={styles.item}>
          댄스
        </div>
        <div className={styles.item}>
          기타
        </div>
      </div>
      <div className={styles.club_container}>
        <ClubCard/>
        <ClubCard/>
        <ClubCard/>
        <ClubCard/>
        <ClubCard/>
        <button className={styles.all_btn}>모두 보기</button>
      </div>
      <div className={styles.recommended_title}>
        <div className={styles.sub_title}>
          세상 모든 덕질 <br/><span style={{color: '#F6990F'}}>만화 / 애니메이션</span> 동아리
        </div>
        <Image src='/assets/club/refresh.svg' alt='Refresh' width={24} height={24}/>
      </div>
      <div className={styles.recommended_club_container}>
        <RecommendedClubCard/>
        <RecommendedClubCard/>
        <RecommendedClubCard/>
        <RecommendedClubCard/>
      </div>
      <div className={styles.sub_title}>주제별 찾기</div>
      <div className={styles.topic_container}>
        <div className={styles.topic} style={{backgroundImage: "url('/assets/club/topic1.png')"}}>
          <p>운동 / 스포츠</p>
        </div>
        <div className={styles.topic} style={{backgroundImage: "url('/assets/club/topic2.png')"}}>
          <p>만화 / 애니메이션</p>
        </div>
        <div className={styles.topic} style={{backgroundImage: "url('/assets/club/topic3.png')"}}>
          <p>인문학 / 책 / 글</p>
        </div>
        <div className={styles.topic} style={{backgroundImage: "url('/assets/club/topic4.png')"}}>
          <p>외국 / 언어</p>
        </div>
        <div className={styles.topic} style={{backgroundImage: "url('/assets/club/topic5.png')"}}>
          <p>봉사활동</p>
        </div>
        <div className={styles.topic} style={{backgroundImage: "url('/assets/club/topic6.png')"}}>
          <p>게임 / 오락</p>
        </div>
        <div className={styles.topic} style={{backgroundImage: "url('/assets/club/topic7.png')"}}>
          <p>요리</p>
        </div>
        <div className={styles.topic} style={{backgroundImage: "url('/assets/club/topic8.png')"}}>
          <p>댄스</p>
        </div>
        <div className={styles.topic} style={{backgroundImage: "url('/assets/club/topic9.png')"}}>
          <p>기타</p>
        </div>
      </div>
      <BottomNavigation url='/club'/>
    </div>
  )
}

export default Club