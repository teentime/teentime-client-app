import styles from '@/styles/Album.module.css'
import Image from 'next/image'

const Album = () => {
  return (
    <div className={styles.container}>
      <div className={styles.all_album}>
        <div className={styles.header}>
          <div>
            <span className={styles.title}>전체 사진 </span>
            <span className={styles.amount}>500</span>
          </div>
          <Image src='/assets/club/plus.svg' alt='Plus' width={24} height={24}/>
        </div>
        <div className={styles.image_container}>
          <img className={styles.photo} src='/assets/profile.png'/>
          <img className={styles.photo} src='/assets/profile.png'/>
          <img className={styles.photo} src='/assets/profile.png'/>
          <img className={styles.photo} src='/assets/profile.png'/>
          <img className={styles.photo} src='/assets/profile.png'/>
          <img className={styles.photo} src='/assets/profile.png'/>
        </div>
      </div>
      <div className={styles.album}>
        <div>
          <span className={styles.title}>앨범 </span>
          <span className={styles.amount}>500</span>
        </div>
        <div>업데이트 순</div>
      </div>
      <div className={styles.album_container}>
        <div className={styles.album2}>
          <div className={styles.header}>
            <div className={styles.left_menu}>
              <div>
                <span className={styles.title}>앨범 제목 </span>
                <span className={styles.amount}>500</span>
              </div>
              <div className={styles.date}>00년 00월</div>
            </div>
            <Image src='/assets/club/plus.svg' alt='Plus' width={24} height={24}/>
          </div>
          <div className={styles.image_container}>
            <img className={styles.photo} src='/assets/profile.png'/>
            <img className={styles.photo} src='/assets/profile.png'/>
            <img className={styles.photo} src='/assets/profile.png'/>
            <img className={styles.photo} src='/assets/profile.png'/>
            <img className={styles.photo} src='/assets/profile.png'/>
            <img className={styles.photo} src='/assets/profile.png'/>
          </div>
        </div>
      </div>
      <button className={styles.plus_btn}><Image src='/assets/club/albumPlus.svg' alt='Plus' width={28} height={28}/></button>
    </div>
  )
}

export default Album