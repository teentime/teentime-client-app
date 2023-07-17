import styles from '@/styles/Post.module.css'
import Image from 'next/image'

const Post = (props) => {
  return (
    <div className={styles.container}>
      <div className={styles.top}>
        <div className={styles.info}>
          <img className={styles.profile} src='/assets/profile.png' alt='Profile'/>
          <div className={styles.user}>
            <span className={styles.username}>{props.username}</span>
            <span className={styles.date}>{props.date}</span>
          </div>
        </div>
        <Image src='/assets/subMenu.svg' alt='PostMenu' width={24} height={24}/>
      </div>
      <div className={styles.title}>{props.title}</div>
      <div className={styles.content}>{props.content}</div>
      <div className={styles.img_container}>
        <div className={styles.img1} style={{backgroundImage: `url('/assets/profile.png')`}}></div>
        <div className={styles.img_container2}>
          <div className={styles.img2} style={{backgroundImage: `url('/assets/profile.png')`}}></div>
          <div className={styles.img3} style={{backgroundImage: `url('/assets/profile.png')`}}>+3</div>
        </div>
      </div>
      <div className={styles.bottom}>
        <div className={styles.heart}>
          <Image src='/assets/filledHeart.svg' alt='FilledHeart' width={24} height={24}/><span className={styles.text}> 50+</span>
        </div>
        <div className={styles.comment}>
          <Image src='/assets/comment.svg' alt='Comment' width={24} height={24}/><span className={styles.text}> 50+</span>
        </div>
      </div>
    </div>
  )
}

export default Post