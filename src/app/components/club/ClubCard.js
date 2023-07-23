import styles from '@/styles/Club.module.css'
import Image from 'next/image'

const ClubCard = () => {
  return (
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
  )
}

export default ClubCard