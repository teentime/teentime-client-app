'use client'
import styles from '@/styles/Header.module.css'
import Image from 'next/image'
import { useRouter } from 'next/navigation'

const Header = (props) => {
  const router = useRouter()

  return (
    <div className={styles.container}>
      <div className={styles.left_menu}>
        <Image onClick={() => {router.back()}} src='/assets/back.svg' alt='Back' width={24} height={24}/>
      </div>
      <div className={styles.title}>{props.title}</div>
      <div className={styles.right_menu} style={props.isClub ? {display: 'block'} : {display: 'none'}}>
        <Image src='/assets/share.svg' alt='share' width={24} height={24}/>
        <Image src='/assets/menu.svg' alt='menu' width={24} height={24}/>
      </div>
    </div>
  )
}

export default Header