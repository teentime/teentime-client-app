import styles from '@/styles/Notice.module.css'
import Image from 'next/image'

const Notice = (props) => {
  return (
    <div className={styles.container}>
      <div className={styles.top}>
        <div className={styles.info}>
          <img className={styles.profile} src='/assets/profile.png' alt='Profile'/>
          <span className={styles.username}>{props.username}</span>
        </div>
        <Image src='/assets/subMenu.svg' alt='NoticeMenu' width={24} height={24}/>
      </div>
      <div className={styles.title}>{props.title}</div>
      <div className={styles.content}>{props.content}</div>
    </div>
  )
}

export default Notice