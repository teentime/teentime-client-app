import styles from '@/styles/Login.module.css'
import Image from 'next/image'
import Link from 'next/link'

const Login = () => {
  return (
    <div className={styles.container}>
      <Image src='/assets/logo.svg' alt='Logo' width={147} height={50}/>
      <form className={styles.login_container}>
        <div className={styles.input_container}>
          <label className={styles.label}>이메일 혹은 전화번호</label>
          <input className={styles.input} type='text' placeholder='이메일 혹은 전화번호를 입력해주세요.'/>
        </div>
        <div className={styles.input_container}>
          <label className={styles.label}>비밀번호</label>
          <input className={styles.input} type='password' placeholder='비밀번호를 입력해주세요'/>
        </div>
        <label className={styles.save_id}>
          <input type="checkbox" id={styles.chk}/>
          <label htmlFor="chk"></label>
          아이디 저장
        </label>
        <button className={styles.login_btn}>로그인</button>
      </form>
      <div className={styles.menu_container}>
        <Link href='#'>아이디 찾기</Link> | <Link href='#'>비밀번호 찾기</Link> | <Link href='/signup'>회원가입</Link>
      </div>
    </div>
  )
}

export default Login