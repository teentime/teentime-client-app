import styles from '@/styles/Info.module.css'
import Image from 'next/image'
import { useState } from 'react'
import JoinModal from './JoinModal'

const Info = () => {
  const [showModal, setShowModal] = useState(false)
  const clickModal = () => setShowModal(!showModal)

  return (
    <div className={styles.container}>
      <img className={styles.club_img} src='/assets/profile.png' alt='ClubImg'/>
      <div className={styles.club_info_box}>
        <div className={styles.name}>동아리 이름</div>
        <div className={styles.info}>서지원 | 30명 | 결성일 2023.00.00</div>
        <div className={styles.intro}>소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다 소개문입니다</div>
      </div>
      <div className={styles.gather}>
        <div className={styles.schedule}>모임 일정</div>
        <div className={styles.gathering_box}>
          <div className={styles.title}>모임 제목(인원)</div>
          <div className={styles.gathering_info_box}>
            <Image src='/assets/club/calendar.svg' alt='Calendar' width={24} height={24}/>
            <div className={styles.info}>0월 0일 화요일 오후 7:40 (140분간 진행)</div>
          </div>
          <div className={styles.gathering_info_box}>
            <Image src='/assets/club/infoLocation.svg' alt='Location' width={24} height={24}/>
            <div className={styles.info}>00스튜디오</div>
          </div>
          <div className={styles.gathering_info_box}>
            <Image src='/assets/club/price.svg' alt='Price' width={24} height={24}/>
            <div className={styles.info}>개인당 5,700원</div>
          </div>
        </div>
      </div>
      <button className={styles.join_btn} onClick={clickModal}>동아리 가입하기</button>
      {showModal && <JoinModal clickModal={clickModal} />}
    </div>
  )
}

export default Info