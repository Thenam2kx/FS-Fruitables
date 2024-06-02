import Slider from "~/components/Slider"
import QuickLinks from "~/components/QuickLinks"

function Home() {
  return (
    <main className="flex flex-shrink flex-grow basis-0 rounded-lg">
      <div className="flex flex-col gap-3">
        <Slider />
        <QuickLinks />
      </div>
    </main>
  )
}

export default Home