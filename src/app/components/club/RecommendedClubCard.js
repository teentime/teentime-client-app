import styles from '@/styles/Club.module.css'

const RecommendedClubCard = () => {
  return (
    <div className={styles.recommended_club}>
      <img className={styles.profile} src='/assets/profile.png' alt='Profile'/>
      <p className={styles.text}>동아리 명</p>
      <p className={styles.info}>동아리 소개 문구입니다.</p>
      <button className={styles.around_btn}>둘러보기</button>
    </div>
  )
}

export default RecommendedClubCard