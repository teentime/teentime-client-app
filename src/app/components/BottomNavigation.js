import styles from '@/styles/BottomNavigation.module.css'
import Link from 'next/link'
import Image from 'next/image'

const BottomNavigation = (props) => {

  return (
    <nav className={styles.container}>
      <ul className={styles.item_container}>
        <li>
          <Link href="/" className={`${styles.nav_item} ${props.url === '/' && styles.active}`}>
            <Image src={props.url === '/' ? '/assets/clickedHome.svg' : '/assets/home.svg'} alt="Home" width={28} height={28}/>
            홈
          </Link>
        </li>
        <li>
          <Link href="/school" className={`${styles.nav_item} ${props.url === '/school' && styles.active}`}>
            <Image src={props.url === '/school' ? '/assets/clickedSchool.svg' : '/assets/school.svg'} alt="School" width={28} height={28}/>
            학교
          </Link>
        </li>
        <li>
          <Link href="/club" className={`${styles.nav_item} ${props.url === '/club' && styles.active}`}>
            <Image src={props.url === '/club' ? '/assets/clickedClub.svg' : '/assets/club.svg'} alt="Club" width={28} height={28}/>
            동아리
          </Link>
        </li>
        <li>
          <Link href="/alarm" className={`${styles.nav_item} ${props.url === '/alarm' && styles.active}`}>
            <Image src={props.url === '/alarm' ? '/assets/clickedAlarm.svg' : '/assets/alarm.svg'} alt="Alarm" width={28} height={28}/>
            알림
          </Link>
        </li>
        <li>
          <Link href="/mypage" className={`${styles.nav_item} ${props.url === '/mypage' && styles.active}`}>
            <Image src={props.url === '/mypage' ? '/assets/clickedMyPage.svg' : '/assets/myPage.svg'} alt="MyPage" width={28} height={28}/>
            마이
          </Link>
        </li>
      </ul>
   </nav>
  )
}

export default BottomNavigation