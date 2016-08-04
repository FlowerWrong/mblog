#include <chrono>
#include <iostream>
#include <memory>
#include <mutex>
#include <thread>

struct Base {
  Base() { std::cout << "  Base::Base()\n"; }
  // Note: non-virtual destructor is OK here
  ~Base() { std::cout << "  Base::~Base()\n"; }
};

// CMakeLists.txt
// project(demo)
// cmake_minimum_required(VERSION 2.8)
//
// set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -DBOOST_LOG_DYN_LINK
// -I/usr/local/include -L/usr/local/lib -lboost_system -lboost_log
// -lboost_thread -lboost_filesystem -lpthread -lhiredis -lmysqlcppconn")
//
// aux_source_directory(. SRC_LIST)
// add_executable(${PROJECT_NAME} ${SRC_LIST})

struct Derived : public Base {
  Derived() { std::cout << "  Derived::Derived()\n"; }
  ~Derived() { std::cout << "  Derived::~Derived()\n"; }
};

void thr(std::shared_ptr<Base> p) {
  std::this_thread::sleep_for(std::chrono::seconds(1));
  std::shared_ptr<Base> lp = p; // thread-safe, even though the
                                // shared use_count is incremented
  {
    static std::mutex io_mutex;
    std::lock_guard<std::mutex> lk(io_mutex);
    std::cout << "local pointer in a thread:\n"
              << "  lp.get() = " << lp.get()
              << ", lp.use_count() = " << lp.use_count() << '\n';
  }
}

int main() {
  // Create an object that is owned by a shared_ptr.
  std::shared_ptr<Base> p = std::make_shared<Derived>();

  std::cout << "Created a shared Derived (as a pointer to Base)\n"
            << "  p.get() = " << p.get()
            << ", p.use_count() = " << p.use_count() << '\n';
  std::thread t1(thr, p), t2(thr, p), t3(thr, p);
  p.reset(); // release ownership from main ???
  std::cout << "Shared ownership between 3 threads and released\n"
            << "ownership from main:\n"
            << "  p.get() = " << p.get()
            << ", p.use_count() = " << p.use_count() << '\n';
  t1.join();
  t2.join();
  t3.join();
  std::cout << "All threads completed, the last one deleted Derived\n";
}
