import styles from '@/styles/Album.module.css'
import Image from 'next/image'
import { useState } from 'react'

const Album = () => {
  const [showButton, setShowButton] = useState(false)
  const clickButton = () => setShowButton(!showButton)

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
      <div className={showButton && styles.btn_container} onClick={clickButton}>
        <button className={styles.plus_btn} onClick={clickButton}><Image src='/assets/club/albumPlus.svg' alt='Plus' width={28} height={28}/></button>
        {
          showButton &&
            <div className={styles.btn_box}>
              <button className={styles.upload_btn}><Image src='/assets/club/upload.svg' alt='Upload' width={28} height={28}/></button>
              <button className={styles.gen_btn}><Image src='/assets/club/folder.svg' alt='Floder' width={28} height={28}/></button>
            </div>
        }
      </div>
    </div>
  )
}

export default Album