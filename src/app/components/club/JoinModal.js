import styles from '@/styles/JoinModal.module.css'
import Image from 'next/image'

const JoinModal = (props) => {
  const { clickModal } = props

  return (
    <div className={styles.container}>
      <form className={styles.modal_container}>
        <div className={styles.top}>
          <div className={styles.title}>프로필 작성</div>
          <Image onClick={clickModal} src='/assets/club/close.svg' alt='Close' width={24} height={24}/>
        </div>
        <div className={styles.profile_container}>
          <div className={styles.profile}>
            <img className={styles.profile_img} src='/assets/profile.png' alt='Profile'/>
            <button className={styles.profile_btn}><Image src='/assets/club/camera.svg' alt='Camera' width={16} height={16}/></button>
          </div>
          <div className={styles.input_container}>
            <div className={styles.input_box}>
              <input className={styles.input} placeholder='활동명을 입력해주세요'/>
              <span className={styles.num}>4/10</span>
            </div>
            <div className={styles.warning}>활동명을 입력해주세요</div>
          </div>
        </div>
        <div className={styles.intro_container}>
          <label className={styles.label}>가입 인사</label>
          <div className={styles.input_box}>
            <input className={styles.input} placeholder='가입 인사를 작성해주세요'/>
            <span className={styles.num}>5/50</span>
          </div>
          <div className={styles.warning}>가입 인사를 작성해주세요</div>
        </div>
        <div className={styles.info}> 
          동아리에서 활동하는 동안 원활한 운영을 위해 아이디,
          별명, 활동 내역, 성별, 연령대, 이름이 운영진에게 공개
          됩니다. 본 동의를 거부하실 수 있으나, 동아리 가입이
          불가합니다.
        </div>
        <button className={styles.join_btn}>동의 후 가입하기</button>
      </form>
    </div>
  )
}

export default JoinModal